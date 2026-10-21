.class public Le1/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/d;


# direct methods
.method public constructor <init>(Le1/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/d$b;->a:Le1/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le1/d$b;->a:Le1/d;

    iget-boolean v1, v0, Le1/c;->q:Z

    if-nez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Le1/d;->B()V

    :cond_0
    return-void
.end method
