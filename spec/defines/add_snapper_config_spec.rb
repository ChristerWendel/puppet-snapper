require 'spec_helper'

describe 'snapper', :type => :class do
  let(:title) { 'snapper::add_snapper_config' }

  context 'with default parameters' do
    it { should contain_exec('default')
        .with_creates('/etc/snapper/configs/default')
    }
  end

  context 'single config' do
    let(:params) { {:configs => ['media']} }

    it { should contain_exec('media')
        .with_creates('/etc/snapper/configs/media')
    }
  end

  context 'multiple configs' do
    let(:params) { {:configs => ['default', 'media']} }

    it { should contain_exec('default')
        .with_creates('/etc/snapper/configs/default')
    }

    it { should contain_exec('media')
        .with_creates('/etc/snapper/configs/media')
    }
  end
end
