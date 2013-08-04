package State.Items 
{
	/**
	 * ...
	 * @author Jack
	 */
	public class Inventory 
	{
		protected var m_items:Vector.<Item>
		
		public function Inventory() 
		{
			
		}
		
		public function get items():Vector.<Item>
		{
			return m_items;
		}
		
		public function consume(item:Item):ConsumableEffect
		{
			if (item is ConsumableItem)
			{
				m_items.splice(m_items.indexOf(item), 1);
				return (item as ConsumableItem).consume();
			}
			else
			{
				return null;
			}
		}		
	}
}