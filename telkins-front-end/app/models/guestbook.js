import DS from 'ember-data';

export default DS.Model.extend({
  name: DS.attr('string'),
  email: DS.attr('string'),
  body: DS.attr('string'),
  artist: DS.attr('string'),
  song: DS.attr('string')
});
