class Api::MaterialsController < ApiController
  before_action :set_material, only: [:show, :update, :destroy]
  
  def index
    @materials = Material.all
    json_response(@todos)
  end

  def create
    @material = Material.create!(material_params)
    json_response(@material, :created)
  end

  def show
    json_response(@material)
  end

  def update
    @material.update(material_params)
    head :no_content
  end

  def destroy
    @material.destroy
    head :no_content
  end

  private

    def set_material
      @material = Material.find(params[:id])
    end

    def material_params
      params.permit(
        :original_link,
        :caption_original,
        :caption_translated,
        :annotation_original,
        :annotation_translated,
        :original_language,
        :translation_language,
        :tags
      )      
    end
end
