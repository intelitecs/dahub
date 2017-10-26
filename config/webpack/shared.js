
entry: glob.sync(path.join('app', 'javascript', 'packs', '*.js*')).reduce(
    (map, entry) =>{
        const basename = path.basename(entry, extname(entry));
        const localMap = map;
        localMap[basename] = path.resolve(entry);
        return localMap;
    },{}
)