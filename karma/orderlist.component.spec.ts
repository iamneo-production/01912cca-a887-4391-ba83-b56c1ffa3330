import { ComponentFixture, TestBed } from '@angular/core/testing';

import { OrderlistComponent } from './orderlist.component';

describe('OrderlistComponent', () => {
  let component: OrderlistComponent;
  let fixture: ComponentFixture<OrderlistComponent>;
  let orderListService:any;
  beforeEach(() => {
    component = new OrderlistComponent(orderListService);
  });

  it('fe_orderlist', () => {
    expect(component).toBeTruthy();
  });
});
