package State.Rooms 
{
	import Characters.Character;
	import State.Items.Item;
	/**
	 * ...
	 * @author Jack
	 */
	public class Room 
	{
		protected var m_characters:Vector.<Character>
		protected var m_items:Vector.<Item>
		
		public function Room() 
		{
			
		}
		
		public fucntion init():void
		{
			
		}
		
		public function addItem(item:Item):void
		{
			m_items.unshift(item);
		}
		
		public function removeItem(item:Item):Item
		{
			m_items.splice(m_items.indexOf(item), 1);
		}
		
		public function addCharacter(character:Character):void
		{
			m_characters.unshift(character);
		}
		
		public function removeCharacter(character:Character):void
		{
			m_characters.splice(m_characters.indexOf(character), 1);
		}
		
		public function get characters():Vector.<Character>
		{
			return m_characters;
		}
		
		public function get items():Vector.<Item>
		{
			return m_items;
		}
	}

}