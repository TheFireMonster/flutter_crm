"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const testing_1 = require("@nestjs/testing");
const customers_controller_1 = require("./customers.controller");
describe('CustomersController', () => {
    let controller;
    beforeEach(async () => {
        const module = await testing_1.Test.createTestingModule({
            controllers: [customers_controller_1.CustomersController],
        }).compile();
        controller = module.get(customers_controller_1.CustomersController);
    });
    it('should be defined', () => {
        expect(controller).toBeDefined();
    });
});
//# sourceMappingURL=customers.controller.spec.js.map