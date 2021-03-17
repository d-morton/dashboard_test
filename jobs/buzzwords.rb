buzzwords = ['Server Error', "Can't Connect", 'Purge the slugs', 'War room now', 'Reboot the server', 'P1', 'P2', 'P3', 'Record Not Found']
buzzword_counts = Hash.new({ value: 0 })

SCHEDULER.every '2s' do
  random_buzzword = buzzwords.sample
  buzzword_counts[random_buzzword] = { label: random_buzzword, value: (buzzword_counts[random_buzzword][:value] + 1) % 30 }
  
  send_event('buzzwords', { items: buzzword_counts.values })
end
