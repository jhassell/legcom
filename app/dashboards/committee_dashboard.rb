require "administrate/base_dashboard"

class CommitteeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    assignments: Field::HasMany,
    members: Field::HasMany,
    user: Field::BelongsTo,
    id: Field::Number,
    name: Field::String,
    meeting_day: Field::String,
    meeting_time: Field::String,
    meeting_room: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :assignments,
    :members,
    :user,
    :id,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :assignments,
    :members,
    :user,
    :id,
    :name,
    :meeting_day,
    :meeting_time,
    :meeting_room,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :assignments,
    :members,
    :user,
    :name,
    :meeting_day,
    :meeting_time,
    :meeting_room,
  ].freeze

  # Overwrite this method to customize how committees are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(committee)
  #   "Committee ##{committee.id}"
  # end
end
