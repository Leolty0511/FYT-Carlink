.class public Lk0/kt$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lk0/kt;->U2([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/kt;


# direct methods
.method public constructor <init>(Lk0/kt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/kt$b;->a:Lk0/kt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/kt$b;->a:Lk0/kt;

    iget-object v0, v0, Lk0/kt;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lk0/kt;->u3(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
