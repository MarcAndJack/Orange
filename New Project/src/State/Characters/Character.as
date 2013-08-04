package Characters 
{
	import flash.display.ActionScriptVersion;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author MAF
	 */
	public class Character 
	{
		protected var m_name:String;
		protected var m_baseStats:Dictionary;
		protected var m_level:int;
		protected var m_experience:int;
		protected var m_experienceToNextLevel:int;
		protected var m_totalHP:int;
		protected var m_currentHP:int;
		
		public function Character(name:String, level:int) {
			m_name = name;
			m_level = level;
			m_baseStats = new Dictionary();
			m_baseStats["STR"] = 0;
			m_baseStats["DEX"] = 0;
			m_baseStats["CON"] = 0;
			m_baseStats["INT"] = 0;
			m_baseStats["WIS"] = 0;
			m_baseStats["CHA"] = 0;
		}
		
		public function get name() {
			return m_name;
		}
		
		public function get level() { 
			return m_level;
		}

		public function setCurrHP(hp:int) {
			m_currentHP = hp;
		}
		
		public function setStats(str:int, dex:int, con:int, intel:int, char:int, wis:int, hp:int) {
			setStrength(str);
			setDexterity(dex);
			setConstitution(con);
			setIntelligence(intel);
			setCharisma(char);
			setWisdom(wis);
			setTotalHP(hp);
		}
		
		private function setTotalHP(hp:int) {
			m_totalHP = hp;
		}
		
		private function setStrength(str:int) {
			m_baseStats["STR"] = str;
		}
		
		private function setDexterity(dex:int) {
			m_baseStats["DEX"] = dex;
		}
		
		private function setConstitution(con:int) {
			m_baseStats["CON"] = con;
		}
		
		private function setIntelligence(intel:int) {
			m_baseStats["INT"] = intel;
		}
		
		private function setWisdom(wis:int) {
			m_baseStats["WIS"] = wis;
		}
		
		private function setCharisma(cha:int) {
			m_baseStats["CHA"] = cha;
		}
	}
}