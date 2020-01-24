class YearsController < ApplicationController

  def years
    
  end

  def y_1990
    year_info_find(1990)
  end

  def y_1991
    year_info_find(1991)
  end

  def y_1992
    year_info_find(1992)
  end

  def y_1993
    year_info_find(1993)
  end

  def y_1994
    year_info_find(1994)
  end

  def y_1995
    year_info_find(1995)
  end

  def y_1996
    year_info_find(1996)
  end

  def y_1997
    year_info_find(1997)
  end

  def y_1998
    year_info_find(1998)
  end

  def y_1999
    year_info_find(1999)
  end

  private

    def year_info_find(year)
      @year = year
      @movies = Movie.where(release_year: year)
      @songs = Song.where(release_year: year)
      @games = Game.where(release_year: year)
    end

end