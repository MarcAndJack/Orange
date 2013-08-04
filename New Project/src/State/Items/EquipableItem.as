package State.Items 
{
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author Jack
	 */
	public class EquipableItem extends Item
	{
		protected var m_location:String;
		protected var m_effects:Dictionary;
		
		public function EquipableItem() 
		{
			
		}
		
		public function get location():String
		{
			return m_location;
		}
		
		public function get effects():Dictionary
		{
			return m_effects;
		}
		
	}

}