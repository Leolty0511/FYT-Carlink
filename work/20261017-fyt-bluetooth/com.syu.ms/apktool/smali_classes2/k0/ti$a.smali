.class public Lk0/ti$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ti;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ti;


# direct methods
.method public constructor <init>(Lk0/ti;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ti$a;->a:Lk0/ti;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/ti$a;->a:Lk0/ti;

    invoke-static {v0}, Lk0/ti;->c3(Lk0/ti;)V

    return-void
.end method
