.class public Lk0/eq$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/eq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/eq;


# direct methods
.method public constructor <init>(Lk0/eq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/eq$a;->a:Lk0/eq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/eq$a;->a:Lk0/eq;

    invoke-static {v0}, Lk0/eq;->d3(Lk0/eq;)V

    return-void
.end method
