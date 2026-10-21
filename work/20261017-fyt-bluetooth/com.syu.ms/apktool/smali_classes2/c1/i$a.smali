.class public Lc1/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc1/i;


# direct methods
.method public constructor <init>(Lc1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc1/i$a;->a:Lc1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc1/i$a;->a:Lc1/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc1/i;->O2(Lc1/i;I)I

    .line 2
    iget-object v0, p0, Lc1/i$a;->a:Lc1/i;

    invoke-static {v0, v1}, Lc1/i;->P2(Lc1/i;I)I

    return-void
.end method
