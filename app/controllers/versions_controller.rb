class VersionsController < ApplicationController
  before_action :set_document, only: [:new, :create]
  def new
    @version = Version.new
  end

  def create
    version = Version.new
    version.file.attach version_params[:file]

    @document.versions << version
    @document.save

    redirect_to @document
  end

  private
    def set_document
      @document = Document.find(params[:document_id])
    end

    def version_params
      params
        .require(:version)
        .permit(:file)
    end
end
