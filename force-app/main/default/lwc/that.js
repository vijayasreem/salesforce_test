
import { LightningElement, track } from 'lwc';

export default class LoanApplicationChecklist extends LightningElement {
    @track checklistItems = [
        { label: 'Identification Documents', completed: false },
        { label: 'Proof of Income', completed: false },
        { label: 'Credit History', completed: false },
        { label: 'Employment Details', completed: false }
    ];

    handleItemChecked(event) {
        const itemIndex = event.currentTarget.dataset.index;
        this.checklistItems[itemIndex].completed = event.target.checked;
    }

    get isSubmitDisabled() {
        return !this.checklistItems.every(item => item.completed);
    }
}
