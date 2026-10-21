.class public Le1/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/m;


# direct methods
.method public constructor <init>(Le1/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/m$a;->a:Le1/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    sget-boolean v0, Le1/a;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lu0/d;->n3(I)V

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lu0/d;->o3(I)V

    :cond_0
    return-void
.end method
