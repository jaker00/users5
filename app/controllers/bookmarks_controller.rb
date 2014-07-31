class BookmarksController < ApplicationController
 
  def bookmarkshow
    @b = Bookmark.find_by_id(params['id'])
  end
  
  def bookmarkindex
    @bookmarks = Bookmark.all
    @user = User.find_by_id(params['id'])
  end
  
  def bookmarknew
  end
    
  def bookmarkcreate
    @bookmarks = Bookmark.new
    @bookmarks.name = params[:name]
    @bookmarks.url = params[:url]
    @bookmarks.description = params[:description]
    @bookmarks.save
    if @bookmarks.save
      redirect_to "/users/{ @bookmark.id }/bookmarkshow"
    else
      render 'new'
    end 
  end
    
  def editbookmark
      @bookmarks = Bookmark.find_by(id: params[:id])
    end
  def edit
  end
    
  def update
    @bookmarks = Bookmark.update
    @bookmarks.name = params[:name]
    @bookmarks.url = params[:url]
    @bookmarks.description = params[:description]
    @bookmarks.save
      redirect_to "/{ @bookmark.id }/bookmarkshow"
    end
  
    def destroy
      @bookmarks = Bookmark.find_by_id(params['id'])
      @bookmarks.destroy
      
      redirect_to '/users/:id/bookmarks'
    end
end
  