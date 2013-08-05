package State.Rooms 
{
	/**
	 * ...
	 * @author Jack
	 */
	public class AdjacentRooms 
	{
		protected var m_north:Room;
		protected var m_south:Room;
		protected var m_east:Room;
		protected var m_west:Room;
		
		public function AdjacentRooms() 
		{
			m_north = null;
			m_south = null;
			m_east = null;
			m_west = null;
		}
		
		public function get north():Room
		{
			return m_north;
		}
		
		public function set north(n:Room):void
		{
			m_north = n;
		}
		
		public function get south():Room
		{
			return m_south;
		}
		
		public function set south(n:Room):void
		{
			m_south = n;
		}
		
		public function get east():Room
		{
			return m_east;
		}
		
		public function set east(n:Room):void
		{
			m_east = n;
		}
		
		public function get west():Room
		{
			return m_west;
		}
		
		public function set west(n:Room):void
		{
			m_west = n;
		}
		
	}

}