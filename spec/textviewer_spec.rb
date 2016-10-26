describe 'test' do
  it { expect(MessageViewer::Viewer.run('hOgE', [:plain])).to eq('hOgE') }
  it { expect(MessageViewer::Viewer.run('hOgE', [:plain, :twice])).to eq('hOgEhOgE') }
  it { expect(MessageViewer::Viewer.run('hOgE', [:plain, :twice, :upper])).to eq('HOGEHOGE') }
  it { expect(MessageViewer::Viewer.run('hOgE', [:plain, :twice, :upper, :twice])).to eq('HOGEHOGEHOGEHOGE') }
end
