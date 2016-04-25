import Ember from 'ember';

export default Ember.Route.extend({
    model() {
    return this.store.findAll('guestbook');
  },
  
  actions: {
    openCheckoutModal(guestbook) {
      return this.render('components/new-guestbook-modal', {
        outlet: 'modal',
        into: 'application',
        model: guestbook,
        controller: 'application'
      });
    },

    closeCheckoutModal() {
      return this.disconnectOutlet({
        outlet: 'modal',
        parentView: 'application'
      });
    }
  }
});
