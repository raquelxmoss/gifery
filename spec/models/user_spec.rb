require 'spec_helper'

describe User do
  it { should have_db_column(:email) }
  it { should have_db_column(:encrypted_password) }
end
