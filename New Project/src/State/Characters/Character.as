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
			setStats(0, 0, 0, 0, 0, 0, 0);
			m_currStats = m_baseStats;
			setBodyParts();
		}
		
		public function get name() {
			return m_name;
		}
		
		public function get level() { 
			return m_level;
		}

		public function updateCurrHP(hp:int) {
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
		public function setStats(base:Boolean, str:int = NaN, dex:int = NaN, con:int = NaN, intel:int = NaN, cha:int = NaN, wis:int = NaN, hp:int = NaN):void {
			if (str != NaN) setStrength(base, str);
			if (dex != NaN)setDexterity(base, dex);
			if (con != NaN)setConstitution(base, con);
			if (intel != NaN)setIntelligence(base, intel);
			if (cha != NaN)setCharisma(base, cha);
			if (wis != NaN)setWisdom(base, wis);
			if (hp != NaN)setTotalHP(hp);
			if (base) m_currStats = m_baseStats;
		}
		
		public function setTotalHP(hp:int) {
			m_totalHP = hp;
		}
		
		public function setStrength(base:Boolean, str:int) {
			if (base) m_baseStats["STR"] = str;
			else m_currStats["STR"] += str;
		}
		
		public function setDexterity(base:Boolean, dex:int) {
			if (base) m_baseStats["DEX"] = dex;
			else m_currStats["DEX"] += dex;
		}
		
		public function setConstitution(base:Boolean, con:int) {
			if (base) m_baseStats["CON"] = con;
			else m_currStats["CON"] += con;
		}
		
		public function setIntelligence(base:Boolean, intel:int) {
			if (base) m_baseStats["INTEL"] = intel;
			else m_currStats["INTEL"] += intel;
		}
		
		public function setWisdom(base:Boolean, wis:int) {
			if (base) m_baseStats["WIS"] = wis;
			else m_currStats["WIS"] += wis;
		}
		
		public function setCharisma(base:Boolean, cha:int) {
			if (base) m_baseStats["CHA"] = cha;
			else m_currStats["CHA"] += cha;
		}
		
		private function setBodyParts() {
			m_bodyParts.push(new BodyPart("rightArm"));
			m_bodyParts.push(new BodyPart("leftArm"));
			m_bodyParts.push(new BodyPart("legs"));
			m_bodyParts.push(new BodyPart("chest"));
			m_bodyParts.push(new BodyPart("head"));
		}
		
		public function addItem(location:String, item:Item) {
			var index:int = m_bodyParts.indexOf(location);
			m_bodyParts[index].item = item;
		}
		
		public function updateCondition(location:String, dCond:int) {
			var index:int = m_bodyParts.indexOf(location);
			m_bodyParts[index].updateCondition(dCond);
		}
	}
}