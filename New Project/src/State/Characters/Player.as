package State.Characters 
{
	import flash.globalization.StringTools;
	import flash.utils.Dictionary;
	import State.Items.Inventory;
	import State.Items.Item;
	/**
	 * @author MAF
	 */
	public class Player extends Character
	{
		protected var m_classification:String;
		protected var m_inventory:Inventory;
		
		public function Player(name:String, level:int, classification:String) 
		{
			super(name, level);
			m_classification = classification;
			setClass();
		}
		
		private function setClass():void {
			switch (m_classification) {
				case ("warrior"):
					setBaseStats(20, 14, 18, 10, 10, 8, 32);
					//warrior stats
					break;
				case ("rogue"):
					setBaseStats(11, 20, 11, 13, 13, 12, 25);
					//roque stats
					break;
				case ("wizard"):
					setBaseStats(8, 9, 10, 18, 17, 18, 20);
					//wizard stats
					break;
				default: new Error("invalid class");
			}
		}
	}
}