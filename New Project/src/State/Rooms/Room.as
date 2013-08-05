package State.Rooms 
{
	import Characters.Character;
	import flash.utils.Dictionary;
	import State.Items.Item;
	/**
	 * ...
	 * @author Jack
	 */
	public class Room 
	{
		protected var m_characters:Vector.<Character>;
		protected var m_items:Vector.<Item>;
		protected var m_adjacentRooms:AdjacentRooms;
		protected var m_visited:Boolean;
		protected var m_commands:Dictionary
		
		protected var m_nextRoom:Room;
		
		
		public function Room() 
		{
			m_commands = new Dictionary;
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
		
		public function get 
		
		/**
		 * 
		 * Entering
		 * 
		 */
		
		public function enter():void
		{
			m_visited = true;
			setValidCommands();
		}
		
		/**
		 * 
		 * Commands
		 * 
		 */
		
		private function setValidCommands():void
		{
			m_commands = new Dictionary;
			m_commands["look"] = look;
			
			if (m_items.length > 0)
			{
				m_commands["loot"] = loot
			}
			
			if (m_characters.length > 0)
			{
				m_commands["attack"] = attack;
			}
			
			if (m_adjacentRooms.north)
			{
				m_commands["go north"] = moveRoom;
			}
			
			if (m_adjacentRooms.south)
			{
				m_commands["go south"] = moveRoom;
			}
			
			if (m_adjacentRooms.east)
			{
				m_commands["go east"] = moveRoom;
			}
			
			if (m_adjacentRooms.west)
			{
				m_commands["go west"] = moveRoom;
			}
		}
		
		public function handleCommand(command:String):String
		{
			var commandFunction:Function = m_commands[command];
			
			switch(command)
			{
				case("go north"):
					m_nextRoom = m_adjacentRooms.north;
					break;
				case("go south"):
					m_nextRoom = m_adjacentRooms.south;
					break;
				case("go east"):
					m_nextRoom = m_adjacentRooms.east;
					break;
				case("go west"):
					m_nextRoom = m_adjacentRooms.west;
			}
			
			if (commandFunction)
			{
				return commandFunction();
			}
			else
			{
				return "That is not a valid command";
			}
		}
		
		public function look():String
		{
			var toReturn:String = "A Room. It contains ";
			
			if (m_items.length > 0)
			{
				toReturn = toReturn + m_items.toString;
			}
			else
			{
				toReturn = toReturn + "no items";
			}
			
			toReturn = toReturn + " and ";
			if (m_characters.length > 0)
			{
				toReturn = toReturn + m_characters.toString;
			}
			else
			{
				toReturn = toReturn + "no one but yourself";
			}
			return toReturn;
		}
		
		public function attack():String
		{
			
		}
		
		public function loot():String
		{
			
		}
		
		public function moveRoom():String
		{
			
		}
	}

}