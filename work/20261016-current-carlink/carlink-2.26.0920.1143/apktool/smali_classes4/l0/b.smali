.class public final Ll0/b;
.super Ll0/a;
.source "SourceFile"


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ll0/b;->c:I

    invoke-direct {p0}, Ll0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Ll0/b;->c:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "STRICT"

    return-object v0

    :pswitch_0
    const-string v0, "BROWSER_COMPATIBLE"

    return-object v0

    :pswitch_1
    const-string v0, "ALLOW_ALL"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
