import mixer from './mixer'

export class Osc {
  constructor(waveform, frequency) {
    this.osc = mixer.createOscillator()
    this.waveform(waveform)
    this.frequency(frequency)
    this.osc.start(0)
  }

  output() {
    return this.osc
  }

  waveform(type) {
    this.osc.type = type
  }

  frequency(freq) {
    this.osc.frequency.value = freq
  }
}
