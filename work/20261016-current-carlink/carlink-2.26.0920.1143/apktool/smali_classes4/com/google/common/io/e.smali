.class public final synthetic Lcom/google/common/io/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/io/TempFileCreator$JavaNioCreator$PermissionSupplier;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/io/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/nio/file/attribute/FileAttribute;
    .locals 1

    iget v0, p0, Lcom/google/common/io/e;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/google/common/io/TempFileCreator$JavaNioCreator;->c()Ljava/nio/file/attribute/FileAttribute;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-static {}, Lcom/google/common/io/TempFileCreator$JavaNioCreator;->e()Ljava/nio/file/attribute/FileAttribute;

    move-result-object v0

    return-object v0

    :goto_0
    invoke-static {}, Lcom/google/common/io/TempFileCreator$JavaNioCreator;->b()Ljava/nio/file/attribute/FileAttribute;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
