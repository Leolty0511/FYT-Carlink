package com.google.protobuf;

/* JADX INFO: loaded from: classes4.dex */
public interface BlockingRpcChannel {
    Message callBlockingMethod(Descriptors.MethodDescriptor methodDescriptor, RpcController rpcController, Message message, Message message2);
}
