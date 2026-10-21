.class public Le1/h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le1/h;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/h;


# direct methods
.method public constructor <init>(Le1/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/h$d;->a:Le1/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le1/h$d;->a:Le1/h;

    const/4 v1, 0x1

    iput-boolean v1, v0, Le1/h;->E:Z

    return-void
.end method
