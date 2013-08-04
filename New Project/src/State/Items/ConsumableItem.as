package State.Items 
{
	/**
	 * ...
	 * @author Jack
	 */
	public class ConsumableItem extends Item
	{
		protected var m_effect:ConsumableEffect;
		
		public function ConsumableItem() 
		{
			
		}
		
		public function consume():ConsumableEffect
		{
			var effect = m_effect;
			m_effect = null;
			return effect;
		}
		
	}

}