.class public abstract Landroid/service/textservice/SpellCheckerService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;,
        Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;,
        Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;,
        Landroid/service/textservice/SpellCheckerService$Session;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.textservice.SpellCheckerService"

.field private static final TAG:Ljava/lang/String; = "SpellCheckerService"


# instance fields
.field private final mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;-><init>(Landroid/service/textservice/SpellCheckerService;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService;->mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abstract createSession()Landroid/service/textservice/SpellCheckerService$Session;
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Landroid/service/textservice/SpellCheckerService;->mBinder:Landroid/service/textservice/SpellCheckerService$SpellCheckerServiceBinder;

    return-object p1
.end method
