.class public Lk0/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/p;


# direct methods
.method public constructor <init>(Lk0/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/p$c;->a:Lk0/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/p$c;->a:Lk0/p;

    invoke-virtual {v0}, Lk0/p;->c3()V

    return-void
.end method
