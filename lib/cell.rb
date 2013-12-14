class Cell

  def overpopulated?

  end

  def underpopulated?

  end

  def resurrected?

  end

  def surviving?

  end

  def add_neighbor(cell)
    @neighbors ||= []
    @neighbors << cell
  end

  def neighbors
    @neighbors || []
  end

end