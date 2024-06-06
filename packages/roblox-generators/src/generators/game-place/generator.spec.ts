import { createTreeWithEmptyWorkspace } from '@nx/devkit/testing';
import { Tree, readProjectConfiguration } from '@nx/devkit';

import { gamePlaceGenerator } from './generator';
import { GamePlaceGeneratorSchema } from './schema';

describe('game-place generator', () => {
  let tree: Tree;
  const options: GamePlaceGeneratorSchema = { name: 'test' };

  beforeEach(() => {
    tree = createTreeWithEmptyWorkspace();
  });

  it('should run successfully', async () => {
    await gamePlaceGenerator(tree, options);
    const config = readProjectConfiguration(tree, 'test');
    expect(config).toBeDefined();
  });
});
