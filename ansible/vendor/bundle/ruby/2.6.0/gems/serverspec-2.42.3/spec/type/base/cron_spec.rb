require 'spec_helper'

set :os, :family => 'base'

describe cron do
  it { should have_entry '* * * * * /usr/local/bin/batch.sh' }
end

describe cron do
  it { should have_entry('* * * * * /usr/local/bin/batch.sh').with_user('root') }
end
