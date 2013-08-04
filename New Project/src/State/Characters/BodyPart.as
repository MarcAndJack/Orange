package State.Characters 
{
	import State.Items.Item;
	/**
	 * ...
	 * @author MAF
	 */
	public class BodyPart 
	{
		//0-100, where 100 is healthy
		protected var m_name:String;
		protected var m_condition:int;
		protected var m_equippedItem:Item;
		
		public function BodyPart(name:String, condition:int = 100, equippedItem:Item = null) 
		{
			m_name = name;
			m_condition = condition;
			m_equippedItem = equippedItem;
		}
		
		public function set item(item:Item) { 
			m_equippedItem = item;
		}
		
		public function get item() {
			return m_equippedItem;
		}
		
		public function set condition(condition:int) {
			m_condition = condition;
		}
		
		public function updateCondition(condition:int) {
			m_condition -= condition;
		}
	}
}