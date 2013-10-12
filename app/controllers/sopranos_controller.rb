class SopranosController < MusiciansController
  def show
    @musician = Soprano.singleton
    super
  end
end
