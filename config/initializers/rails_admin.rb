RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  #config.authenticate_with do
  #  warden.authenticate! scope: :user
  #end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    # bulk_delete
    show
    edit
    delete
    # show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model 'Schueler' do
    label 'Schüler'
    label_plural 'Schüler'

    list do
      include_all_fields
      field :schule do
        label 'Schule'
        searchable :name
        searchable :kuerzel
      end

      field :schuljahr do
        label 'Schuljahr'
        searchable :name
        searchable :kuerzel
      end

      exclude_fields :id, :created_at, :updated_at
    end

    show do
      include_all_fields
      exclude_fields :id, :created_at, :updated_at
    end

    export do 
      exclude_fields :id, :created_at, :updated_at
    end
  end

  config.model 'Schule' do
    label 'Schule'
    label_plural 'Schulen'

    list do
      exclude_fields :id, :created_at, :updated_at
    end
    
    show do
      exclude_fields :id, :created_at, :updated_at
    end

    export do 
      exclude_fields :id, :created_at, :updated_at
    end
  end

  config.model 'Geschlecht' do
    label 'Geschlecht'
    label_plural 'Geschlechter'
    
    list do
      exclude_fields :id, :created_at, :updated_at
    end
    
    show do
      exclude_fields :id, :created_at, :updated_at
    end

    export do 
      exclude_fields :id, :created_at, :updated_at
    end
  end

  config.model 'Verbleib' do
    label 'Verbleib'
    label_plural 'Verbleibe'

    list do
      exclude_fields :id, :created_at, :updated_at
    end
    
    show do
      exclude_fields :id, :created_at, :updated_at
    end

    export do 
      exclude_fields :id, :created_at, :updated_at
    end
  end

  config.model 'Schuljahr' do
    label 'Schuljahr'
    label_plural 'Schuljahre'

    list do
      exclude_fields :id, :created_at, :updated_at
    end
    
    show do
      exclude_fields :id, :created_at, :updated_at
    end

    export do 
      exclude_fields :id, :created_at, :updated_at
    end
  end
end

module RailsAdmin
  class CSVConverter
    remove_const(:UTF8_ENCODINGS) if (defined?(UTF8_ENCODINGS))
    UTF8_ENCODINGS = [nil, '', 'utf8', 'utf-8', 'unicode', 'UTF8', 'UTF-8', 'UNICODE', 'utf8mb4', 'latin1']
  end
end

module AdminUserLocale extend ActiveSupport::Concern
  included do
    before_filter :set_locale
  end

  def set_locale
    I18n.locale = :de
  end
end

RailsAdmin::ApplicationController.send :include, AdminUserLocale
