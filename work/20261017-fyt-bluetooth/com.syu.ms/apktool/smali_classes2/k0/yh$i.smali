.class public Lk0/yh$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/yh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/yh;


# direct methods
.method public constructor <init>(Lk0/yh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/yh$i;->a:Lk0/yh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget v0, Lk0/nt;->a:I

    sparse-switch v0, :sswitch_data_0

    .line 2
    invoke-static {}, Ll0/c0;->e()V

    goto :goto_0

    .line 3
    :sswitch_0
    invoke-static {}, Ll0/c0;->B()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0xf601c4 -> :sswitch_0
        0xf701c4 -> :sswitch_0
        0xf801c4 -> :sswitch_0
        0xf901c4 -> :sswitch_0
        0xfa01c4 -> :sswitch_0
        0xfb01c4 -> :sswitch_0
    .end sparse-switch
.end method
