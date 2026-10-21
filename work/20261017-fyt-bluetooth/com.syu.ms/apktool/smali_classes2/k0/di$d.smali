.class public Lk0/di$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/di;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/di;


# direct methods
.method public constructor <init>(Lk0/di;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/di$d;->a:Lk0/di;

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
    invoke-static {}, Ll0/c0;->E()V

    goto :goto_0

    .line 3
    :sswitch_0
    iget-object v0, p0, Lk0/di$d;->a:Lk0/di;

    invoke-static {v0}, Lk0/di;->h3(Lk0/di;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x5d01c7 -> :sswitch_0
        0x5e01c7 -> :sswitch_0
        0x5f01c7 -> :sswitch_0
        0x7601c6 -> :sswitch_0
        0x9301c6 -> :sswitch_0
        0x9401c6 -> :sswitch_0
        0x9601c6 -> :sswitch_0
        0xa301c6 -> :sswitch_0
        0xa701c6 -> :sswitch_0
        0xa801c6 -> :sswitch_0
        0xba01c4 -> :sswitch_0
        0xc401c4 -> :sswitch_0
        0xce01c4 -> :sswitch_0
    .end sparse-switch
.end method
