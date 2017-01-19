class AddFollowUpPossibleCheck < ActiveRecord::Migration
  def up

    # return if it's a new setup
    return if !Setting.find_by(name: 'system_init_done')

    Setting.create_if_not_exists(
      title: 'Define postmaster filter.',
      name: '0200_postmaster_filter_follow_up_possible_check',
      area: 'Postmaster::PreFilter',
      description: 'Define postmaster filter to check if follow ups get created (based on admin settings).',
      options: {},
      state: 'Channel::Filter::FollowUpPossibleCheck',
      frontend: false
    )
  end
end
