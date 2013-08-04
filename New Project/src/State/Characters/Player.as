package Characters 
{
	import flash.globalization.StringTools;
	import flash.utils.Dictionary;
	/**
	 * @author MAF
	 */
	public class Player extends Character
	{
		protected var m_classification:String;
		
		public function Player(name:String, level:int, classification:String) 
		{
			super(name, level);
			m_classification = classification;
			setClass();
		}
		
		private function setClass() {
			switch (m_classification) {
				case ("warrior"):
					setStats(20, 20, 20, 20, 20, 20, 20);
					//warrior stats
					break;
				case ("rogue"):
					setStats(20, 20, 20, 20, 20, 20, 20);
					//roque stats
					break;
				case ("wizard"):
					setStats(20, 20, 20, 20, 20, 20, 20);
					//wizard stats
					break;
				default: new Error("invalid class");
			}
		}
		
	}

}