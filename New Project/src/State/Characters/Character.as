package State.Characters 
{
	import flash.display.ActionScriptVersion;
	import State.Characters.BodyPart;
	import State.Items.Item;

	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author MAF
	 */
	public class Character 
	{
		protected var m_name:String;
		protected var m_baseStats:Dictionary;
		protected var m_currStats:Dictionary;
		protected var m_level:int;
		protected var m_experience:int;
		protected var m_experienceToNextLevel:int;
		protected var m_totalHP:int;
		protected var m_currentHP:int;

		protected var m_bodyParts:Vector.<BodyPart> = new Vector.<BodyPart>;
		
		public function Character(name:String, level:int) {
			m_name = name;
			m_level = level;
			m_baseStats = new Dictionary();
			setBaseStats(0, 0, 0, 0, 0, 0, 0);
			setBodyParts();
		}
		
		public function get name():String {
			return m_name;
		}
		
		public function get level():int { 
			return m_level;
		}

		public function updateCurrHP(hp:int):void {
			m_currentHP += hp;
			if (m_currentHP <= 0) {
				//TODO:Determine death
				trace("dead");
			}
		}

		/**
		 * Sets all stats 
		 * @param	base: Determines if base stats or currStats are being changed
		 */
		public function setBaseStats(str:int = 0, dex:int = 0, con:int = 0, intel:int = 0, cha:int = 0, wis:int = 0, hp:int = 0):void {
			setStrength(true, str);
			setDexterity(true, dex);
			setConstitution(true, con);
			setIntelligence(true, intel);
			setCharisma(true, cha);
			setWisdom(true, wis);
			setTotalHP(hp);
			m_currStats = m_baseStats;
		}
		
		public function get baseStats():Dictionary {
			return m_baseStats;
		}
		
		public function setTotalHP(hp:int):void {
			m_totalHP = hp;
		}
		
		public function setStrength(base:Boolean, str:int):void {
			if (base) m_baseStats["STR"] = str;
			else m_currStats["STR"] += str;
		}
		
		public function setDexterity(base:Boolean, dex:int):void {
			if (base) m_baseStats["DEX"] = dex;
			else m_currStats["DEX"] += dex;
		}
		
		public function setConstitution(base:Boolean, con:int):void {
			if (base) m_baseStats["CON"] = con;
			else m_currStats["CON"] += con;
		}
		
		public function setIntelligence(base:Boolean, intel:int):void {
			if (base) m_baseStats["INT"] = intel;
			else m_currStats["INT"] += intel;
		}
		
		public function setWisdom(base:Boolean, wis:int):void {
			if (base) m_baseStats["WIS"] = wis;
			else m_currStats["WIS"] += wis;
		}
		
		public function setCharisma(base:Boolean, cha:int):void {
			if (base) m_baseStats["CHA"] = cha;
			else m_currStats["CHA"] += cha;
		}
		
		private function setBodyParts():void {
			m_bodyParts.push(new BodyPart("rightArm"));
			m_bodyParts.push(new BodyPart("leftArm"));
			m_bodyParts.push(new BodyPart("legs"));
			m_bodyParts.push(new BodyPart("chest"));
			m_bodyParts.push(new BodyPart("head"));
		}
		
		public function addItem(location:String, item:Item):void {
			var index:int = m_bodyParts.indexOf(location);
			m_bodyParts[index].item = item;
		}
		
		public function updateCondition(location:String, dCond:int):void {
			var index:int = m_bodyParts.indexOf(location);
			m_bodyParts[index].updateCondition(dCond);
		}
	}
}