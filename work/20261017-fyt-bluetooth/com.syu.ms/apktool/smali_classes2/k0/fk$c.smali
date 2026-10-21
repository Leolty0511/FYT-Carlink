.class public Lk0/fk$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fk;


# direct methods
.method public constructor <init>(Lk0/fk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fk$c;->a:Lk0/fk;

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
    invoke-static {}, Lk0/fk;->b3()V

    goto :goto_0

    .line 3
    :sswitch_0
    invoke-static {}, Lk0/fk;->c3()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x701be -> :sswitch_0
        0x801be -> :sswitch_0
        0x1201be -> :sswitch_0
        0x1301be -> :sswitch_0
        0x5301bc -> :sswitch_0
        0x5801bc -> :sswitch_0
    .end sparse-switch
.end method
