.class public Landroid/media/MediaCas$PluginDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginDescriptor"
.end annotation


# instance fields
.field private final mCASystemId:I

.field private final mName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0xffff

    .line 2
    iput v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget v0, p1, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;->caSystemId:I

    iput v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    .line 6
    iget-object p1, p1, Landroid/hardware/cas/V1_0/HidlCasPluginDescriptor;->name:Ljava/lang/String;

    iput-object p1, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "PluginDescriptor {"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Landroid/media/MediaCas$PluginDescriptor;->mCASystemId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroid/media/MediaCas$PluginDescriptor;->mName:Ljava/lang/String;

    .line 19
    .line 20
    const-string/jumbo v2, "}"

    .line 21
    .line 22
    .line 23
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
