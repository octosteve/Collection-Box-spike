class HomeController < ApplicationController
  def index
    respond_to do |format|
      format.html
      format.json do
        @collection_boxes = CollectionBox.all
        @markers = Gmaps4rails.build_markers(@collection_boxes) do |box, marker|
          marker.lat box.latitude
          marker.lng box.longitude
          marker.infowindow box.address
          marker.picture({
                             :url => "https://addons.cdn.mozilla.net/img/uploads/addon_icons/13/13028-64.png",
                             :width => "50",
                             :height => "50"
                         })
        end
        render json: @markers
      end
    end

  end
end
