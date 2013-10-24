class FlutistsController < MusiciansController
  def show
    @musician = Flutist.singleton
    super
  end
end
