.class public interface abstract Landroid/content/IContentProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final APPLY_BATCH_TRANSACTION:I = 0x14

.field public static final BULK_INSERT_TRANSACTION:I = 0xd

.field public static final CALL_TRANSACTION:I = 0x15

.field public static final CANONICALIZE_TRANSACTION:I = 0x19

.field public static final CREATE_CANCELATION_SIGNAL_TRANSACTION:I = 0x18

.field public static final DELETE_TRANSACTION:I = 0x4

.field public static final GET_STREAM_TYPES_TRANSACTION:I = 0x16

.field public static final GET_TYPE_TRANSACTION:I = 0x2

.field public static final INSERT_TRANSACTION:I = 0x3

.field public static final OPEN_ASSET_FILE_TRANSACTION:I = 0xf

.field public static final OPEN_FILE_TRANSACTION:I = 0xe

.field public static final OPEN_TYPED_ASSET_FILE_TRANSACTION:I = 0x17

.field public static final QUERY_TRANSACTION:I = 0x1

.field public static final REFRESH_TRANSACTION:I = 0x1b

.field public static final UNCANONICALIZE_TRANSACTION:I = 0x1a

.field public static final UPDATE_TRANSACTION:I = 0xa

.field public static final descriptor:Ljava/lang/String; = "android.content.IContentProvider"


# virtual methods
.method public abstract applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation
.end method

.method public abstract bulkInsert(Ljava/lang/String;Landroid/net/Uri;[Landroid/content/ContentValues;)I
.end method

.method public abstract call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public abstract canonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
.end method

.method public abstract createCancellationSignal()Landroid/os/ICancellationSignal;
.end method

.method public abstract delete(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract insert(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract openAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
.end method

.method public abstract openFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;Landroid/os/IBinder;)Landroid/os/ParcelFileDescriptor;
.end method

.method public abstract openTypedAssetFile(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
.end method

.method public abstract query(Ljava/lang/String;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
.end method

.method public abstract refresh(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
.end method

.method public abstract uncanonicalize(Ljava/lang/String;Landroid/net/Uri;)Landroid/net/Uri;
.end method

.method public abstract update(Ljava/lang/String;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
