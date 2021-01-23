package node.worker_threads;

typedef TransferListItem = ts.AnyOf3<MessagePort, js.lib.ArrayBuffer, node.fs.promises.FileHandle>;