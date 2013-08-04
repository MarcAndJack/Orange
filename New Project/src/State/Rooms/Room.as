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
		protected var m_characters:Vector.<Character>;
		protected var m_items:Vector.<Item>;
		protected var m_adjacentRooms:Vector.<Room>;
		protected var m_visited:Boolean;
		
		
		public function Room() 
		{
			
		}
		
		public fucntion init():void
		{
			
		}
		
		/**
		 * 
		 * State
		 * 
		 */
		
		public function get characters():Vector.<Character>
		{
			return m_characters;
		}
		
		public function get items():Vector.<Item>
		{
			return m_items;
		}
		
		public function get visited():Boolean
		{
			return m_visited;
		}
		
		public function set visited(value:Boolean = true):void
		{
			m_visited = value;
		}
		
		/**
		 * 
		 * Utility
		 * 
		 */
		
		 public function addItem(item:Item):void
		{
			m_items.push(item);
		}
		
		public function removeItem(item:Item):Item
		{
			m_items.splice(m_items.indexOf(item), 1);
		}
		
		public function addCharacter(character:Character):void
		{
			m_characters.push(character);
		}
		
		public function removeCharacter(character:Character):void
		{
			m_characters.splice(m_characters.indexOf(character), 1);
		}
		
		public function look():String
		{
			return "A Room. It contains " + m_items.toString + " and " + m_characters.toString;
		}
		
		/**
		 * 
		 * Entering
		 * 
		 */
		
		public function enter():void
		{
			m_visited = true;
		}
	}

}