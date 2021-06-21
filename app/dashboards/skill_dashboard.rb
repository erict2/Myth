require "administrate/base_dashboard"

class SkillDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    skillgroup: Field::BelongsTo,
    resttype: Field::BelongsTo,
    skilldelivery: Field::BelongsTo,
    characterskills: Field::HasMany,
    skillrequirements: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    description: Field::Text,
    incant: Field::String,
    target: Field::String,
    prop: Field::String,
    tier: Field::Number,
    maxpurchase: Field::Number,
    playeravailable: Field::Boolean,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    name
    skillgroup
    resttype
    skilldelivery
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    name
    tier
    description
    maxpurchase
    incant
    target
    prop
    skillgroup
    resttype
    skilldelivery
    skillrequirements
    playeravailable
    created_at
    updated_at
    characterskills
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    name
    tier
    description
    maxpurchase
    incant
    target
    prop
    skillgroup
    resttype
    skilldelivery
    playeravailable
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how skills are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(skill)
    skill.name
  end
end
