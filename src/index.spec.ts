import { mockPromise } from './util/mock';

describe('Mocks', () => {
	test('mockPromise', () => {
		it('should return success', async () => {
			const promise = await mockPromise<string>('success');
			expect(promise).toBe('success');
		});
	});
});
