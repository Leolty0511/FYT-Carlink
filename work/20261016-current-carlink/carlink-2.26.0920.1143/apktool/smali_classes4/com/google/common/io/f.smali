.class public final synthetic Lcom/google/common/io/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/io/TempFileCreator$JavaNioCreator$PermissionSupplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/io/f;->a:I

    iput-object p1, p0, Lcom/google/common/io/f;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/nio/file/attribute/FileAttribute;
    .locals 2

    iget v0, p0, Lcom/google/common/io/f;->a:I

    iget-object v1, p0, Lcom/google/common/io/f;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast v1, Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1}, Lcom/google/common/io/TempFileCreator$JavaNioCreator;->d(Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/attribute/FileAttribute;

    move-result-object v0

    return-object v0

    :goto_0
    check-cast v1, Ljava/io/IOException;

    invoke-static {v1}, Lcom/google/common/io/TempFileCreator$JavaNioCreator;->a(Ljava/io/IOException;)Ljava/nio/file/attribute/FileAttribute;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
