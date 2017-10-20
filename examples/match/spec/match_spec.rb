# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Match, '#new' do
  let(:lietuva) { Team.new }
  let(:italija) { Team.new }
  let(:latvia) { Team.new }

  it 'can be created with two teams' do
    match = Match.new(lietuva, italija)
    expect(match).to_not be nil
  end

  it 'can be completed by specifying a winner' do
    match = Match.new(lietuva, italija)
    match.complete(lietuva)
  end

  it 'stores winner when first team wins' do
    match = Match.new(lietuva, italija)
    match.complete(lietuva)
    expect(match.winner).to eq(lietuva)
  end

  it 'stores winner when second team wins' do
    match = Match.new(italija, lietuva)
    match.complete(lietuva)
    expect(match.winner).to eq(lietuva)
  end

  it 'accepts winner only from the list of match teams' do
    match = Match.new(italija, lietuva)
    expect(match.complete(latvia)).to be false
  end
end
