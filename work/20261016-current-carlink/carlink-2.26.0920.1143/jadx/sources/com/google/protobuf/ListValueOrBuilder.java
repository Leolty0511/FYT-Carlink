package com.google.protobuf;

import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface ListValueOrBuilder extends MessageOrBuilder {
    Value getValues(int i2);

    int getValuesCount();

    List<Value> getValuesList();

    ValueOrBuilder getValuesOrBuilder(int i2);

    List<? extends ValueOrBuilder> getValuesOrBuilderList();
}
