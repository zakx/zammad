# Copyright (C) 2012-2016 Zammad Foundation, http://zammad-foundation.org/

module Channel::Filter::FollowUpPossibleCheck

  def self.run(_channel, mail)
    ticket_id = mail['x-zammad-ticket-id'.to_sym]

    return true if !ticket_id

    ticket = Ticket.lookup(id: ticket_id)

    return true if !ticket

    case ticket.group.follow_up_possible
    when 'new_ticket'
      mail[:subject]                        = ticket.subject_clean(mail[:subject])
      mail['x-zammad-ticket-id'.to_sym]     = nil
      mail['x-zammad-ticket-number'.to_sym] = nil
    when 'reject'
      mail['x-zammad-ignore'.to_sym] = true
    end

    true
  end
end
